{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      smaller-base = true;
      syb-with-class = true;
      quasi-quotation = true;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "HStringTemplate"; version = "0.6.9"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s.clover@gmail.com";
      author = "Sterling Clover";
      homepage = "";
      url = "";
      synopsis = "StringTemplate implementation in Haskell.";
      description = "A port of the Java library by Terrence Parr.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((pkgs.lib).optional (flags.syb-with-class) (hsPkgs.syb-with-class) ++ (pkgs.lib).optionals (flags.quasi-quotation) [
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          ]) ++ (if flags.smaller-base
          then [
            (hsPkgs.syb)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.text)
            (hsPkgs.deepseq)
            (hsPkgs.utf8-string)
            ]
          else [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.time)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.text)
            (hsPkgs.utf8-string)
            ]);
        };
      };
    }