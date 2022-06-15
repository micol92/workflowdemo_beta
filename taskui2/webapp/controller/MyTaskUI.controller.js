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
                  //debugger;               
                //this.getView().getModel("newEduBiz2").setData(bizData);                  
                $.ajax({
                    url: "/taskui2/CAP_Dest/catalog-service2/SMGAMEINFO?$format=json",
                    //url: "https://krworkzonepoc-core-smcap01-srv.cfapps.ap11.hana.ondemand.com/catalog-service2/SMGAMEINFO?$format=json",
                    headers: {
                        "Content-Type": "application/json;charset=utf-8"
                    },
                    success: function(data, headers){
                        debugger;
                        //var nData = that._getTextByKey(data.value);
                        if(that.getView().getModel("newEduBiz3")){
                            //that.getView().getModel("bizModel").setData(nData); 
                            that.getView().getModel("newEduBiz3").setData(data.value); 
                        }else{
                            //that.getView().setModel(new JSONModel(nData), "bizModel");
                            that.getView().setModel(new JSONModel(data.value), "newEduBiz3");
                        }
                    },
                    error: function(error){
                        debugger;
                        MessageBox.error("EduBizMain.controller.error");
                    }
                        //console.log("success");
                        //console.log(data);

                        //that.getView().getModel("context").setData("aaaa");
                        //var supplierData2 = data.responseJSON.value;
                        //var existingData2 = that.getView().getModel("");
                        //existingData2.oData.SMTOPGAME = {};
                        //existingData2.oData.SMTOPGAME = supplierData2;
                        //that.getView().setModel(existingData2);
                });            
    
            }
        });
    });
