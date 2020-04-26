<section class="content">
      
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Editar categoria</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fa fa-times"></i></button>
             </div>
        </div>
        <?php echo form_open('backend/facultades/update');?>
        <div class="box-body">
            <?php include "partials/form.php";?>
        </div>
        
        <div class="box-footer">
            <div class="form-group">
                <div class="col-md-12">
                    <button type="submit" class="btn btn"><i aria-hidden="true"></i> Guardar</button>
                    <a href="<?php echo base_url(); ?>backend/facultades" class="btn btn"><i  aria-hidden="true"></i> Volver</a>
                </div>
            </div>
        </div>
        </form>
        
    </div>
      <!-- /.box -->

</section>
  