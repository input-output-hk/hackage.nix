{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-utility"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "List contents of an mbox file containing e-mails";
      description = "List contents of an mbox file containing e-mails.\nThis is intended for post-processing by the @cutter@ command.\nSee <http://hackage.haskell.org/package/cutter>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lsmbox" = {
          depends = [
            (hsPkgs.hsemail)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.spreadsheet)
            (hsPkgs.non-empty)
            (hsPkgs.bytestring)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      };
    }