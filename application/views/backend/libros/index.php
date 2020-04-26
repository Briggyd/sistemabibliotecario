<section class="content">
      <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Lista de  Libros</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fa fa-times"></i></button>
             </div>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-md-12 text-right">
                    <a href="<?php echo base_url(); ?>backend/libros/add" class="btn btn"><i class="fa fa-plus" aria-hidden="true"></i> Nuevo Libro</a>
                </div>
            </div>
            <!-- /.row -->
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <table id="example1" class="table table-bordered table-dataTables">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Codigo</th>
                              
                                <th>Titulo</th>
                                <th>Autor</th>
                                <th>Ejemplares</th>
                                <th>Categoria</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if ($libros): ?>
                            <?php $i = 1;?>
                            <?php foreach ($libros as $libro): ?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo $libro->codigo_libro; ?></td>
                                    
                                    <td><?php echo $libro->titulo_libro; ?></td>
                                    <td><?php echo $libro->autor_libro; ?></td>
                                    <td><?php echo $libro->ejemplares_libro; ?></td>
                                    
                                    <td><?php echo $libro->facultad; ?></td>
                                    <td>
                                        <a href="<?php echo base_url(); ?>backend/libros/edit/<?php echo $libro->id_libro; ?>" class="btn btn btn-xs btn-flat" title="Editar"><span class="glyphicon glyphicon-pencil"></span></a>
                                        


                                    </td>
                                </tr>
                                <?php $i++;?>
                            <?php endforeach;?>
                        <?php endif;?>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.box-body -->
    </div>
      <!-- /.box -->
</section>

<div class="modal modal-info fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">PORTADA DEL LIBRO</h4>
            </div>
          <div class="modal-body">
                <div class="row">
                    <div class="col-sm-4">
                        
                    </div>
                    <div class="col-sm-8">
                       <div class="form-group">
                               
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-warning">Guardar</button>
                            </div>
                        </form>

                    </div>
                </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Cerrar</button>

          </div>
          </form>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>