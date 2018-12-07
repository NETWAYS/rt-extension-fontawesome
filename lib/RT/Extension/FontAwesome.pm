use strict;
use warnings;

package RT::Extension::FontAwesome;

our $VERSION = '0.9.0';

our $FONTAWESOME_CSS_FILE = RT->Config->Get('FontAwesome_Css_File')
                                // 'svg-with-js.min.css';

our $FONTAWESOME_JS_FILE  = RT->Config->Get('FontAwesome_Js_File')
                                // 'all.min.js';

our $FONTAERSOME_VERSION  = '5.5.0-web';

RT->AddJavaScript('fontawesome-svg/js/' . $FONTAWESOME_JS_FILE);

RT->AddStyleSheets('fontawesome-svg/css/' . $FONTAWESOME_CSS_FILE);

RT->Logger->debug(
    sprintf(
        'FontAwesome: Loaded v%s (css=%s, js=%s)',
        $FONTAERSOME_VERSION,
        $FONTAWESOME_CSS_FILE,
        $FONTAWESOME_JS_FILE
    )
);

=head1 NAME

RT-Extension-FontAwesome - Provide icons from Font Awesome to RT

=head1 DESCRIPTION

The extension includes svg icons to use in RT and other extensions.

=head1 RT VERSION

Works with RT 4.3

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

Add this line:

    Plugin('RT::Extension::FontAwesome');

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

NETWAYS GmbH <support@netways.de>

=head1 BUGS

All bugs should be reported on L<GitHub|https://github.com/NETWAYS/rt-extension-fontawesome>.

=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2018 by NETWAYS GmbH
This is free software, licensed under:
  The GNU General Public License, Version 2, June 1991

=cut

1;
