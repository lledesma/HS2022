<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Home.Master" CodeBehind="MenuConsultas.aspx.vb" Inherits="Presentacion.MenuConsultas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
      //funcion que reconoce teclas para ir a los botones retroceso, baja y graba
      function tecla_op(e) {
        var keycode = e.keyCode;
        ///ESC RETROCEDE
        if (keycode == '27') {
          e.preventDefault();
          document.getElementsByTagName('button')[0].focus();
          document.getElementsByTagName('button')[0].click();

        }
        ///se anula el enter Y PASO AL BOTON DE GRABA
        if (keycode == '13') {
          e.preventDefault();
          document.getElementsByTagName('button')[1].focus();
          document.getElementsByTagName('button')[1].click();
        }


        //F8 GRABA
        if (keycode == '119') {
          e.preventDefault();
          document.getElementsByTagName('button')[1].focus();
          document.getElementsByTagName('button')[1].click();
        }
      }

      //funcion que reconoce teclas para ir a los botones retroceso, baja y graba
      function tecla_op_botones(e) {
        var keycode = e.keyCode;
        ///ESC RETROCEDE
        if (keycode == '27') {
          e.preventDefault();
          document.getElementsByTagName('button')[0].focus();
          document.getElementsByTagName('button')[0].click();

        }
        //        ///no voy a anular el ENTER
        //        if (keycode == '13') {
        //            e.preventDefault();
        //        }


        //F8 GRABA
        if (keycode == '119') {
          e.preventDefault();
          document.getElementsByTagName('button')[1].focus();
          document.getElementsByTagName('button')[1].click();
        }
      }

      //funcion para seleccionar todo le contenido de un textbox cuando se pone el foco sobre el control. se agrega como atributo en el codebehind
      function seleccionarTexto(obj) {
        if (obj != null) {
          obj.select();
        }
      }


    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--<asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/descarga (1).jpg" />--%>

<asp:ScriptManager ID="ScriptManager1" runat="server" 
                            EnableScriptGlobalization="True">
</asp:ScriptManager>             

<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
<ContentTemplate>

<div class="card card-primary">
      <div class="card-header">
              <h3 class="card-title">MENU CONSULTAS</h3>
      </div>


<form role="form">
<div class="card-body">
<div class="container-fluid">   <%--align="center"--%>
<div class="row justify-content-center" >   <%--class="row "--%>
<div class="col-lg-8">
<div class="card">
<div class="card-body">
    <div class="form-group">
            <div class="row justify-content-center">
            <div class="col-md-4">  <%--class="col-4"--%>
              <asp:LinkButton ID="LinkButton_CodigosMasCargados" runat="server">1 - CODIGOS MAS CARGADOS.</asp:LinkButton>
            </div>
            <div class="col-md-4">  <%--class="col-4"--%>
              <asp:LinkButton ID="LinkButton_CodigoPremiado" runat="server">2 - CODIGO PREMIADO.</asp:LinkButton>       
            </div>
            <div class="col-md-4">  <%--class="col-4"--%>
              <asp:LinkButton ID="LinkButton_IngresoDeTerminales" runat="server">3 - INGRESO DE TERMINALES.</asp:LinkButton>       
            </div>
            </div>
    </div>
    <div class="form-group">
            <div class="row justify-content-start" >
                <div class="col-md-4">
                </div>  
                <div class="col-md-4">
                    <asp:Label ID="Label4" runat="server" Text="Opción:"></asp:Label>
                    <asp:TextBox ID="txt_opcion" runat="server" MaxLength="1" placeholder="0" onkeydown="tecla_op(event);" onkeypress="return solo_123_valitation(event);" Width="30px"></asp:TextBox>
                </div>
                <div class="col-md-4">
                </div>  
    
            </div>
    </div>          
    

</div>

</div>
</div>

</div>
</div>
</div>
</form>
<div class="card-footer">
        <div class="row justify-content-center" >
        <div class="row align-items-center">
            <div class="form-group">
            <button type="submit" UseSubmitBehavior="false" class="btn btn-primary" runat="server" id="btn_retroceder" onkeydown="tecla_op_botones(event);">
                ESC = RETROCEDE</button>
            &nbsp;
            </div>

            

            <div class="form-group">
            <button type="button" id="BOTON_GRABAR" runat="server" class="btn btn-primary" onkeydown="tecla_op_botones(event);"> <%--data-targe="#modal-primary"--%>
                  F8 = GRABA
                </button>
            </div>
        
        </div>
        

        </div>
</div>

</div>


<%--MODAL MSJ CENTRADO - ERROR OPCION--%>
<div class="modal fade" id="modal-sm_error" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog modal-sm modal-dialog-centered " role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Error!</h4>
              <button type="button" id="btn_close_error" runat="server" class="close" tabindex="-1" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <p>OPCION INCORRECTA!&hellip;</p>
            </div>
            <div class="modal-footer justify-content-center ">
            <%--<div class="modal-footer justify-content-between">--%>
              <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
              <button type="button" id="btn_ok_error" runat="server" tabindex="1" class="btn btn-primary" data-dismiss="modal">OK</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->


</ContentTemplate>
</asp:UpdatePanel>


</asp:Content>
