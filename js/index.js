function Append() {
    var index=0;
    $(".box").find(".boxc_b").click(function () {
        var text=$(".boxc_c").text();
        if(text===''){
            alert("请先编辑内容");
            return;
        }
        var length=$(".boxc_c").text().length;
        if(length>=70)
        {
            alert('哪有那么多废话,内容小于70字');
            return;
        }
        var date=new Date();
        var year=date.getFullYear();
        var month=date.getMonth()+1;
        var day=date.getDate();
        var hour=date.getHours();
        var minu=date.getMinutes();
        var second=date.getSeconds();

        var date=year+'-'+month+'-'+day;
        var time=hour+':'+minu+':'+second;
        Add(date,time,text);
        index++;


        //加入后清楚文本内容
        $(".boxc_c").text('');
    })
}
function Add(date,time,text) {
    $.ajax({
        url:'http://127.0.0.1:8000/QQTimeHistory/php/history.php?type=add',
        type:'post',
        data:{
            date:date,
            time:time,
            text:text
        },
        success:function (data) {
            console.log(data);
            Show();
        },
        error:function (data) {
            console.log(data)
        }
    })
}
function Show() {
    $.ajax({
        url:'http://127.0.0.1:8000/QQTimeHistory/php/history.php?type=show',
        type:'get',
        dataType:'json',
        success:function (data) {

            for(var i=0;i<data.length;i++)
            {
                $(".timefamily").append('        <div class="time">  <a href="#'+data[i].id+'">'+data[i].date+'  '+data[i].time+'</a></div>\n');

                $(".nextbox").append('<div class="word" id="'+data[i].id+'">\n' +
                    '                <div class="circle"><span></span></div>\n' +
                    '                <h4>'+data[i].date+' <p>'+data[i].time+'</p></h4>\n' +
                    '                <h5>'+data[i].word+'</h5>\n' +
                    '            </div>  ');
            }

        },
        error:function (data) {
            console.log(data)
        }
    })
}