{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      split-base = true;
      parsec = true;
      pretty = true;
      generic = true;
      mapdict = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "json";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2009 Galois Inc.";
      maintainer = "Iavor S. Diatchki (iavor.diatchki@gmail.com)";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Support for serialising Haskell to and from JSON";
      description = "JSON (JavaScript Object Notation) is a lightweight data-interchange\nformat. It is easy for humans to read and write. It is easy for\nmachines to parse and generate.  It is based on a subset of the\nJavaScript Programming Language, Standard ECMA-262 3rd Edition -\nDecember 1999.\n\nThis library provides a parser and pretty printer for converting\nbetween Haskell values and JSON.";
      buildType = "Simple";
    };
    components = {
      "json" = {
        depends  = if flags.split-base
          then (([
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ] ++ (if flags.generic
            then [
              (hsPkgs.base)
              (hsPkgs.syb)
            ]
            else [
              (hsPkgs.base)
            ])) ++ pkgs.lib.optional (flags.parsec) (hsPkgs.parsec)) ++ pkgs.lib.optional (flags.pretty) (hsPkgs.pretty)
          else [ (hsPkgs.base) ];
      };
    };
  }