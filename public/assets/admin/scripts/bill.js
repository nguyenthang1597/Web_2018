$(document).ready(() => {
	$('.deleteBill').on('click', function() {
		if(window.confirm('Bạn có chắc chắn muốn xóa hóa đơn này?')){
			let target = $(this).parent().parent();
			let Id = target.find('td#Id')[0].innerText;
			let url = '/admin/bill/delete';
			$.ajax({
				url: url,
				type: 'POST',
				data: {
					Id: Id
				},
				success: function(data) {
					if(data){
						alert(data);
						var $table1 = jQuery('#table-1').DataTable();
						$table1.row(target).remove().draw();
					}
						
					else
						alert('Xóa không thành công!');
				}
			})
		}
	})
})