<!-- <form>
  <div class="row">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <label>
      <select class="turnintodropdown" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <option><?php echo $filter_group['name']; ?></option>
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <option name="filter[]" value="<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></option>
            <?php } else { ?>
            <option name="filter[]" value="<?php echo $filter['filter_id']; ?>" ><?php echo $filter['name']; ?></option>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </select>
    </label>
    <?php } ?>
  </div>
</form> -->
<div class="panel panel-default">
  <div class="panel-heading"><?php echo $heading_title; ?></div>
  <div class="list-group">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <a class="list-group-item"><?php echo $filter_group['name']; ?></a>
    <div class="list-group-item">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <?php echo $filter['name']; ?>
            <?php } else { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <?php echo $filter['name']; ?>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
  </div>
</div>
<script type="text/javascript">
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
</script>
