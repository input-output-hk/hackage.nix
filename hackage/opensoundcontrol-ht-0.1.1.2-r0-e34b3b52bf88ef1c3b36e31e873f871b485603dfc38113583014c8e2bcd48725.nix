{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "opensoundcontrol-ht"; version = "0.1.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2009";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskell OpenSoundControl utilities";
      description = "Some additional modules I regular use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* a @Transport@ type for writing to files (that's however less important, since @hsc3@ itself does now support SuperCollider Non-Real-Time mode)\n\n* a @Transport@ monad class that can be used to hide the handle of the SuperCollider connection, simulate communication without I\\/O (e.g. testing) and maybe others.\n\nAlso see the supercollider-ht package which uses this one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.hosc)
          (hsPkgs.transformers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.utility-ht)
          ] ++ (if flags.splitbase
          then [ (hsPkgs.random) (hsPkgs.process) (hsPkgs.base) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }