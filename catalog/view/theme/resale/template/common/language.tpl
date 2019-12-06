<?php if (count($languages) > 1) { ?>
    <div class="pull-left">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
            <ul class="language-list">
				<?php foreach ($languages as $language): ?>
					<?php if ($language['code'] == $code): ?>
                        <li>
                            <a class="active" name="<?= $language['code']; ?>" href="<?php echo $language['code'] ?>"><?php echo strtok($language['code'], '-'); ?></a>
                        </li>
					<?php else: ?>
                        <li>
                            <a href="<?php echo $language['code'] ?>" name="<?= $language['code']; ?>"><?php echo strtok($language['code'], '-'); ?></a>
                        </li>
					<?php endif; ?>
				<?php endforeach; ?>
            </ul>
            <input type="hidden" name="code" value=""/>
            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
        </form>
    </div>
<?php } ?>
