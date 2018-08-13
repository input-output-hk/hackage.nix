{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      ibus = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "monky";
        version = "2.0.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "Moepi, Ongy";
      homepage = "";
      url = "";
      synopsis = "A system state collecting library and application";
      description = "monky started as an alternative to conky, i3-status or similar, that's fully containing in one process.\nAlso making an effort to keep file descriptors or handles as long as possible.\nmonky 2.0 is the first version on hackage.\n\nmonky consists of multiple parts. A number of collection modules, output modules, \"examples\" and a helper application.\n\n* collection modules\n\nThe collection modules are the core library. Collection modules export a handle that can\nbe used to get some detail about the system. They can be used without the other parts\nof this package, but they are designed with monky in mind.\n\n* output modules\n\nOutput modules take a monky specific output type and transform it into something that can be\ndisplayed by some external application. That may be a statusbar (dzen2), the terminal,\na network port, that makes it accessible on another machine, or any other thing.\n\n* examples\n\nThe examples are a group of modules, that use collection modules to create the output used\nby the output modules. The flexibility of the examples varies greatly, some may are really\nflexible, some are rather static. The intended usecase is for users to create their own\nexamples and use them, if they don't want to use the provided ones.\n\nLater on, I want to create something like xmonad-contrib or a collection of user examples,\nto provide better usability for users with few to no experience with haskell.\n\n* helper application\n\nThe helper application is used to compile the actual output generator and can generate an\nexample configuration.\n\nTo generate an example configuration in /~\\/.monky/ simply run `monky`.\nThen modify /~\\/.monky\\/monky.hs/ to create your own configuration.\n\nModules can have two types. 'PollModule' and 'EvtModule'. 'PollModule's work by the main loop\nasking the module to generate new output, while 'EvtModule's block until some event is received and\nupdate their output on demand. Some handles are an instance of both, 'PollModule' and 'EvtModule'.\n'EvtModule' should be preferred, since they induce less load on your system.\nThe monky main-loop does one \"tick\" every second. 'PollModules' are updated each /N/ ticks, where\n/N/ is passed to 'pollPack'.";
      buildType = "Simple";
    };
    components = {
      "monky" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.statvfs)
          (hsPkgs.bytestring)
          (hsPkgs.netlink)
          (hsPkgs.cereal)
          (hsPkgs.formatting)
          (hsPkgs.composition)
          (hsPkgs.env-locale)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.double-conversion)) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.10") [
          (hsPkgs.transformers-compat)
          (hsPkgs.old-locale)
        ]) ++ pkgs.lib.optionals (_flags.ibus) [
          (hsPkgs.ibus-hs)
          (hsPkgs.dbus)
        ];
      };
      exes = {
        "monky" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.containers)
            (hsPkgs.monky)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
    };
  }