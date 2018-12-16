{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "mmark-ext";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mmark-md/mmark-ext";
      url = "";
      synopsis = "Commonly useful extensions for MMark markdown processor";
      description = "Commonly useful extensions for MMark markdown processor.\nClick on \"Text.MMark.Extension.Common\" to get started.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.foldl)
          (hsPkgs.lucid)
          (hsPkgs.microlens)
          (hsPkgs.mmark)
          (hsPkgs.modern-uri)
          (hsPkgs.skylighting)
          (hsPkgs.text)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lucid)
            (hsPkgs.mmark)
            (hsPkgs.mmark-ext)
            (hsPkgs.text)
          ];
        };
      };
    };
  }