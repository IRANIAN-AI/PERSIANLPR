#! /usr/bin/perl

use strict;
use warnings;
use diagnostics;
use feature ':5.14';
use Gtk3 '-init';

use Glib qw/TRUE FALSE/;

#### DECLARATIONS

my $window = Gtk3::Window->new('toplevel');
$window->set_title("تشخیص پلاک ایرانی");
$window->set_position("center");
$window->set_default_size(400, 500);
$window->set_border_width(20);
$window->signal_connect (delete_event => \&quit_function);

my $button1 = Gtk3::Button->new("خروج");
$button1->signal_connect (clicked => \&quit_function);

my $button2 = Gtk3::Button->new("تشخيص پلاک");
$button2->signal_connect (clicked => \&say_something, "تشخیص ");

my $button3 = Gtk3::Button->new("ليست پلاک");
$button3->signal_connect (clicked => \&say_something, "ليست پلاک");

my $hbox = Gtk3::Box->new("horizontal", 5);
$hbox->set_homogeneous (TRUE);
$hbox->pack_start($button1, TRUE, TRUE, 0);
$hbox->pack_start($button2, TRUE, TRUE, 0);
$hbox->pack_start($button3, TRUE, TRUE, 0);

my $vbox = Gtk3::Box->new("vertical", 5);
$vbox->add($hbox);

my $label = Gtk3::Label->new("Am I connected?");
$vbox->add($label);

$window->add($vbox);
$window->show_all;

#### FUNCTIONS

sub quit_function {
	say "Exiting Gtk3";
	Gtk3->main_quit;
	return FALSE;
}

sub say_something {
    my ($button, $userdata) = @_;
    $label->set_label( $userdata );
    system("python main.py &");
	return FALSE;
}

Gtk3->main;
