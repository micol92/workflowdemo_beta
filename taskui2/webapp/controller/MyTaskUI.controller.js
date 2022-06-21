sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageBox",
    "sap/ui/model/json/JSONModel",
    "sap/m/MessageToast"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller, MessageBox, JSONModel, MessageToast) {
        "use strict";

        return Controller.extend("taskui2.controller.MyTaskUI", {
            onInit: function () {
              
                  //that.getView().getModel("context").setData(textdata);
                  var bizData= [
                    {PROMYY:"2021", PROMDIV:"sales", PROMDEP1:"dp01", PROMDEP2:"dp02", PROMSNO:"1", PROMTYP:"G1->G2", PROMHDL1:0, PROMTGL1:54, PROMRIO1:0, PROMHDL2:0, PROMTGL2:54, PROMRIO2:0},
                    {PROMYY:"2021", PROMDIV:"sales", PROMDEP1:"dp01", PROMDEP2:"dp02", PROMSNO:"1", PROMTYP:"G2->G3", PROMHDL1:0, PROMTGL1:41, PROMRIO1:0, PROMHDL2:0, PROMTGL2:41, PROMRIO2:0},
                    {PROMYY:"2021", PROMDIV:"sales", PROMDEP1:"dp01", PROMDEP2:"dp02", PROMSNO:"1", PROMTYP:"G3->G4", PROMHDL1:0, PROMTGL1:99, PROMRIO1:0, PROMHDL2:0, PROMTGL2:99, PROMRIO2:0},
                    {PROMYY:"2021", PROMDIV:"sales", PROMDEP1:"dp01", PROMDEP2:"dp02", PROMSNO:"1", PROMTYP:"탄력운영 T/O일반직", PROMHDL1:0, PROMTGL1:0, PROMRIO1:0, PROMHDL2:0, PROMTGL2:0, PROMRIO2:0}
                  ];
                  //debugger;

                //console.log(bizData);
                if(!this.getView().getModel("newEduBiz2")){ this.getView().setModel(new JSONModel({}), "newEduBiz2"); }
                //debugger;
                
                this.getView().getModel("newEduBiz2").setData(bizData);

                var appId = this.getOwnerComponent().getManifestEntry("/sap.app/id");
                var appPath = appId.replaceAll(".", "/");
                var appModulePath = jQuery.sap.getModulePath(appPath);                
                debugger;
                $.ajax({
                    url:  appModulePath + "/CAP_Dest/catalog-service2/SMGAMEINFO?$format=json",
                    headers: {
                        "Content-Type": "application/json;charset=utf-8"
                    },
                    success: function(data, headers){
                        debugger;
                        if(this.getView().getModel("newEduBiz3")){
                            this.getView().getModel("newEduBiz3").setData(data.value); 
                        }else{
                            //that.getView().setModel(new JSONModel(data.value), "newEduBiz3");
                            this.getView().setModel(new JSONModel({}), "newEduBiz3");
                            this.getView().getModel("newEduBiz3").setData(data.value);

                        }
                    },
                    error: function(error){
                        debugger;
                        MessageBox.error("EduBizMain.controller.error");
                    }
                });            


                // Gathering workflow task-instances 
                $.ajax({
                    //url:  appModulePath + "/bpmworkflowruntime/workflow-service/rest/v1/task-instances",
                    url:  appModulePath + "/bpmworkflowruntime/v1/workflow-instances?startedBy=jungwoo.han@sap.com",
                    headers: {
                        "Content-Type": "application/json;charset=utf-8"
                    },
                    success: function (data, headers) {
                        var content = data;
                        debugger; 
                    },
                    error: function(error){
                        debugger;
                        MessageBox.error("Workflow execution error !!!");
                    }
                });                
            }
        });
    });
