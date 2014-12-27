<?php
/**
 * The MIT License (MIT)
 * 
 * Copyright (c) 2011-2014 BitShares
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
?>

<div class="buttons">
  <div class="pull-right"><input type="button" id="button-confirm" class="btn btn-primary" value="<?php echo $button_bitshares_confirm; ?>" /></div>
</div>
<script type="text/javascript">
            <!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'GET',
		url: 'index.php?route=payment/bitshares/send',
    timeout: (1000 * 45), // 45 seconds
    error: function() {
      alert('Error communicating with payment provider.');
    },
		success: function(msg) {
      try {
        var result = JSON.parse(msg);
        if(result.error) {
          alert(result.error);
        } else {
          window.location.href = 'bitshares/redirect2bitshares.php?order_id='+result.order_id;
          
        }
      } catch(e) {
        alert('JSON parsing error: '+msg);
      }
		}		
	});
});
//--></script> 
