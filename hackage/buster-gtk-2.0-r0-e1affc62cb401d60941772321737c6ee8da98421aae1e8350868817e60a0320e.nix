{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "buster-gtk";
        version = "2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Renaissance Computing Institute";
      maintainer = "Jeff Heard <jeff@renci.org>";
      author = "Jeff Heard";
      homepage = "http://vis.renci.org/jeff/buster";
      url = "";
      synopsis = "Almost but not quite entirely unlike FRP";
      description = "Buster is best described by the following blog post: http:\\/\\/vis.renci.org\\/jeff\\/2009\\/03\\/31\\/almost-but-not-quite-entirely-like-frp\\/\n\nIt is an engine for orchestrating large, complex, and multifaceted applications by couching them in terms of time, events, a bus,\nbehaviours, and widgets.  Time is continuous and infininte.  Events are discrete and exist for a particular time.  The bus is a\ndiscrete sample of time made available to behaviours. Behaviours are continuous and exist for all time, but sample time via\nthe bus.  They filter Events to determine what is on the bus at future times.  Widgets are input-only objects that sample the\noutside world and assign events to discrete portions of time.\n\nBuster is designed to be flexible, with a flexible event model and the ability to add custom data to events, and designed to be\nhigh performance.  It is simple to integrate with Gtk while at the same time able to handle other kinds of resources, like files\nand sockets.";
      buildType = "Simple";
    };
    components = {
      "buster-gtk" = {
        depends  = [
          (hsPkgs.buster)
          (hsPkgs.gtk)
          (hsPkgs.binary)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.dataenc)
        ];
      };
    };
  }