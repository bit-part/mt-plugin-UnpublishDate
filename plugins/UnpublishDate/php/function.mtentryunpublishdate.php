<?php
function smarty_function_mtentryunpublishdate ($args, &$ctx) {
    $e = $ctx->stash('entry');
    if (empty($e->entry_unpublished_on)) {
        return '';
    }
    $args['ts'] = $e->entry_unpublished_on;
    return $ctx->_hdlr_date($args, $ctx);
}
?>
