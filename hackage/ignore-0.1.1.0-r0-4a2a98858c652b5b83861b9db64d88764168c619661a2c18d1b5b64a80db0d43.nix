{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      without-pcre = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ignore";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "http://github.com/agrafix/ignore";
      url = "";
      synopsis = "Handle ignore files of different VCSes";
      description = "Library and tiny tool for working with ignore files of different version control systems";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.path)
          (hsPkgs.Glob)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.directory)
        ] ++ pkgs.lib.optional (!flags.without-pcre) (hsPkgs.pcre-heavy);
      };
      exes = {
        "ignore" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ignore)
            (hsPkgs.path)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "ignore-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ignore)
            (hsPkgs.text)
            (hsPkgs.HTF)
          ];
        };
      };
    };
  }