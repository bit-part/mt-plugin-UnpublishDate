package UnpublishDate::Tags;
use strict;

# Function Tags : EntryUnpublishDate
sub _hdlr_entryunpublishdate {
    my ($ctx, $args) = @_;
    my $e = $ctx->stash('entry')
        or return $ctx->_no_entry_error();
    $args->{ts} = $e->unpublished_on
        or return '';
    return $ctx->build_date($args);
}

# Function Tags : PageUnpublishDate
sub _hdlr_pageunpublishdate {
    return undef unless $_[0]->check_page;
    shift->invoke_handler( 'entryunpublishdate', @_ );
}

1;