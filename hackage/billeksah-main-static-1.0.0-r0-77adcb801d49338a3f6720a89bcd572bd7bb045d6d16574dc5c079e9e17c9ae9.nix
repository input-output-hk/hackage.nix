{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "billeksah-main-static";
        version = "1.0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Juergen \"jutaro\" Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken";
      homepage = "http://www.leksah.org";
      url = "https://github.com/leksah";
      synopsis = "Leksah plugin base";
      description = "Plugin framework used by leksah (static version)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "billeksah-main-static" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.billeksah-services)
            (hsPkgs.billeksah-forms)
            (hsPkgs.billeksah-pane)
            (hsPkgs.leksah-main)
            (hsPkgs.leksah-plugin-pane)
            (hsPkgs.leksah-dummy)
          ];
        };
      };
    };
  }