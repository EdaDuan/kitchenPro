import React from "react";
import { useContext, useState, useEffect, useRef } from "react";
import { Table, Input, Button, Popconfirm, Form } from "antd";

const EditableContext = React.createContext();
const EditableRow = ({ index, ...props }) => {
  const [form] = Form.useForm();
  return (
    <Form form={form} component={false}>
      <EditableContext.Provider value={form}>
        <tr {...props} />
      </EditableContext.Provider>
    </Form>
  );
};

const EditableCell = ({ title, editable, children, dataIndex, record, handleSave, ...restProps }) => {
  const [editing, setEditing] = useState(false);
  const inputRef = useRef();
  const form = useContext(EditableContext);
  useEffect(() => {
    if (editing) {
      inputRef.current.focus();
    }
  }, [editing]);

  const toggleEdit = () => {
    setEditing(!editing);
    form.setFieldsValue({
      [dataIndex]: record[dataIndex]
    });
  };

  const save = async e => {
    try {
      const values = await form.validateFields();
      toggleEdit();
      handleSave({ ...record, ...values });
    } catch (errInfo) {
      console.log("Save failed:", errInfo);
    }
  };

  let childNode = children;

  if (editable) {
    childNode = editing ? (
      <Form.Item
        style={{
          margin: 0,
          height: "50px"
        }}
        name={dataIndex}
        rules={[
          {
            required: true,
            message: `${title} 不能为空哦`
          }
        ]}
      >
        <Input ref={inputRef} onPressEnter={save} onBlur={save} style={{ width: "150px", height: "50px" }} />
      </Form.Item>
    ) : (
      <div
        className='editable-cell-value-wrap'
        style={{
          paddingRight: 24,
          height: "50px",
          lineHeight: "50px"
        }}
        onClick={toggleEdit}
      >
        {children}
      </div>
    );
  }

  return <td {...restProps}>{childNode}</td>;
};

export default class FoodsMaterials extends React.Component {
  constructor() {
    super();
    this.columns = [
      {
        title: "食材",
        dataIndex: "item",
        width: "40%",
        editable: true
      },
      {
        title: "用量",
        dataIndex: "num",
        width: "40%",
        editable: true
      },
      {
        title: "操作",
        dataIndex: "operation",
        render: (text, record) =>
          this.state.dataSource.length >= 1 ? (
            <Popconfirm title='确定删除吗?' onConfirm={() => this.handleDelete(record.key)}>
              <Button>删除</Button>
            </Popconfirm>
          ) : null
      }
    ];
    this.state = {
      dataSource: [
        {
          key: 0,
          item: "食材：如鸡蛋",
          num: "用量：如1个"
        },
        {
          key: 1,
          item: "食材：如鸡蛋",
          num: "用量：如1个"
        },
        {
          key: 2,
          item: "食材：如鸡蛋",
          num: "用量：如1个"
        },
        {
          key: 3,
          item: "食材：如鸡蛋",
          num: "用量：如1个"
        }
      ],
      count: 4
    };
  }

  // 删除
  handleDelete = key => {
    const { count, dataSource } = this.state;
    this.setState({
      dataSource: dataSource.filter(item => item.key !== key),
      count: count - 1
    });
  };

  // 添加
  handleAdd = () => {
    const { count, dataSource } = this.state;
    const newData = {
      key: count,
      item: `食材：如鸡蛋`,
      num: `用量：如1个`
    };
    this.setState({
      dataSource: [...dataSource, newData],
      count: count + 1
    });
  };

  handleSave = row => {
    const newData = [...this.state.dataSource];
    const index = newData.findIndex(item => row.key === item.key);
    const item = newData[index];
    newData.splice(index, 1, { ...item, ...row });
    this.setState({
      dataSource: newData
    });
  };

  render() {
    const { dataSource } = this.state;
    const components = {
      body: {
        row: EditableRow,
        cell: EditableCell
      }
    };
    const columns = this.columns.map(col => {
      if (!col.editable) {
        return col;
      }

      return {
        ...col,
        onCell: record => ({
          record,
          editable: col.editable,
          dataIndex: col.dataIndex,
          title: col.title,
          handleSave: this.handleSave
        })
      };
    });
    return (
      <div id='foods-materials'>
        <h1 style={{ fontWeight: "600", color: "gray", paddingTop: "20px" }}>食材</h1>

        <Table components={components} rowClassName={() => "editable-row"} bordered dataSource={dataSource} columns={columns} style={{ width: "500px" }} pagination={false} />
        <Button
          onClick={this.handleAdd}
          type='default'
          style={{
            marginTop: 16
          }}
        >
          添加一行食材
        </Button>
        <hr style={{ width: "500px", margin: "20px 0" }}></hr>
      </div>
    );
  }
}
