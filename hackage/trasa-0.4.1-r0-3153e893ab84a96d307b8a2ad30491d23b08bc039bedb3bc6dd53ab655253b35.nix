{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "trasa"; version = "0.4.1"; };
      license = "MIT";
      copyright = "© 2017-2019 Andrew Martin\n© 2017-2019 Kyle McKean";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>\nKyle McKean <mckean.kylej@gmail.com>\nchessai <chessai1996@gmail.com>";
      author = "Andrew Martin\nKyle McKean";
      homepage = "https://github.com/haskell-trasa/trasa";
      url = "";
      synopsis = "Type Safe Web Routing";
      description = "This library is a solution for http-based routing and dispatch. Its\ngoals are similar to the goals of `servant`, however, `trasa` relies\non very different mechanisms to accomplish those goals. All typeclasses\nin this library are optional. All of the real work is accomplished with GADTs,\nuniversal quantification, and plain old haskell data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.quantification)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }