$(document).ready(() => {
	$('.deleteCate').on('click', function() {
		if(window.confirm('Bạn có chắc chắn muốn xóa loại xe này?')){
			let target = $(this).parent().parent();
			let Id = target.find('td#Id')[0].innerText;
			let url = '/admin/category/delete';
			$.ajax({
				url: url,
				type: 'POST',
				data: {
					Id: Id
				},
				success: function(data) {
					if(data){
						var $table1 = jQuery('#table-1').DataTable();
						$table1.row(target).remove().draw();
						alert(data);
						
					}
					else
						alert('Xóa không thành công!');
				}
			})
		}
	})

	$('input.hide').change(function() {
		let url = '/admin/catalog/visible';
		let Id = $(this).parent().parent().find('td#Id')[0].innerText;
		$.ajax({
			url: url,
			type: 'POST',
			data: {
				Id: Id,
				isHide: this.checked ? 1 : 0
			},
			success: function(data) {
				
			}
		})
	})
})
