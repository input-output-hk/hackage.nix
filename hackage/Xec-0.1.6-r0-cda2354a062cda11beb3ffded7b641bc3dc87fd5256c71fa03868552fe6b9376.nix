{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Xec"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daiki Handa (xanxys@gmail.com)";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Gtk command launcher with identicon";
      description = "Xec (pron. exec) is a launcher with identicon. It's originally intended to be used with xmonad,\nbut you can use it anywhere gtk is available. Hit enter twice in a row to run the command as-is.\nHit enter once to complete the command with highlited one.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Xec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.filepath)
            (hsPkgs.old-time)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.SHA)
            ];
          };
        };
      };
    }