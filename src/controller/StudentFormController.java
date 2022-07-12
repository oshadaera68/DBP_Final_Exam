package controller;

import com.jfoenix.controls.JFXTextField;
import javafx.event.ActionEvent;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import view.tm.StudentTm;

public class StudentFormController {
    public JFXTextField txtId;
    public JFXTextField txtName;
    public JFXTextField txtEmail;
    public JFXTextField txtContact;
    public JFXTextField txtAddress;
    public JFXTextField txtNic;
    public TableView<StudentTm> tblStudent;
    public TableColumn colId;
    public TableColumn colName;
    public TableColumn colEmail;
    public TableColumn colContact;
    public TableColumn colAddress;
    public TableColumn colNIC;

    public void initialize(){

    }

    public void txtIdOnAction(ActionEvent actionEvent) {

    }

    public void saveStudentOnAction(ActionEvent actionEvent) {

    }

    public void updateStudentOnAction(ActionEvent actionEvent) {

    }

    public void deleteStudentOnAction(ActionEvent actionEvent) {

    }
}
