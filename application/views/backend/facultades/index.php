<section class="content">
      <!-- cuerpo dell recuadro  -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Lista de categorias</h3>

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
                    <a href="<?php echo base_url(); ?>backend/facultades/add" class="btn btn"><i class="fa fa-plus" aria-hidden="true"></i> NUEVA CATEGORIA</a>
                </div>
            </div>
            <!-- tabla del recuadro  -->
             <hr>
            <div class="row">
                <div class="col-md-12">
                    <table id="example1" class="table table-bordered table-dataTables">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if ($facultades): ?>
                                <?php $i = 1;?>
                                <?php foreach ($facultades as $facultad): ?>
                                    <tr>
                                        <td><?php echo $i ?></td>
                                        <td><?php echo $facultad->nombre; ?></td>
                                        <td>
            <!--Botones  editar y eliminar categorias  -->

                                            <a href="<?php echo base_url(); ?>backend/facultades/edit/<?php echo $facultad->id; ?>" class="btn btn btn-xs btn-flat" title="Editar"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                            <a href="<?php echo base_url(); ?>backend/facultades/delete/<?php echo $facultad->id; ?>" class="btn btn btn-remove btn-xs btn-flat" title="Eliminar"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
                                        </td>
                                    </tr>
                                    <?php $i++;?>
                                <?php endforeach;?>
                            <?php endif;?>
                        </tbody>
                    </table>
                </div>
            </div>
        
        </div>
       
    </div>
      
</section>