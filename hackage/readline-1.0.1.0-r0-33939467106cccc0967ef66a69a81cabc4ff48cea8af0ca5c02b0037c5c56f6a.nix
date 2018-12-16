{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "readline";
        version = "1.0.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "An interface to the GNU readline library";
      description = "More information on readline can be found at\nhttp:\\/\\/www.gnu.org\\/directory\\/readline.html.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.process)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }