{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "carettah"; version = "0.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      author = "Kiwamu Okabe <kiwamu@debian.or.jp>";
      homepage = "https://gitorious.org/carettah";
      url = "";
      synopsis = "A presentation tool writtten with Haskell.";
      description = "A presentation tool writtten with Haskell.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "carettah" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.pandoc)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            (hsPkgs.uglymemo)
            (hsPkgs.hcwiid)
            ];
          };
        };
      };
    }