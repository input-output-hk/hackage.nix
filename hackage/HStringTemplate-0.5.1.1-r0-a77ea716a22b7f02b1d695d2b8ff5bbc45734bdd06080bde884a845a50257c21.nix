{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      small-base = true;
      syb-with-class = true;
      simple-generics = true;
      quasi-quotation = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HStringTemplate";
        version = "0.5.1.1";
      };
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
      "HStringTemplate" = {
        depends  = ((pkgs.lib.optional (flags.syb-with-class) (hsPkgs.syb-with-class) ++ pkgs.lib.optional (flags.simple-generics) (hsPkgs.syb)) ++ pkgs.lib.optionals (flags.quasi-quotation) [
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
          (hsPkgs.mtl)
        ]) ++ (if flags.small-base
          then [
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
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
          ]);
      };
    };
  }