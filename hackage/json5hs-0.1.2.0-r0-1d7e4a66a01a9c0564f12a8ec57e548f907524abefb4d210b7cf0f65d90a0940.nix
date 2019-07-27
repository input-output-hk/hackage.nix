{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      split-base = true;
      pretty = true;
      generic = true;
      mapdict = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "json5hs"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Yang X. Nan";
      maintainer = "sakamitz@yahoo.co.jp";
      author = "Yang X. Nan";
      homepage = "";
      url = "";
      synopsis = "Serialising to and from JSON5";
      description = "The JSON5 Data Interchange Format (JSON5) is a superset of JSON\nthat aims to alleviate some of the limitations of JSON by expanding\nits syntax to include some productions from ECMAScript 5.1.\n\nThis library provides a parser and pretty printer for converting\nbetween Haskell values and JSON5.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then ([
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.text)
            ] ++ (if flags.generic
            then [ (hsPkgs.base) (hsPkgs.syb) ]
            else [
              (hsPkgs.base)
              ])) ++ (pkgs.lib).optional (flags.pretty) (hsPkgs.pretty)
          else [ (hsPkgs.base) ];
        };
      };
    }