{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "xformat";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Sean Leather";
        maintainer = "leather@cs.uu.nl";
        author = "Sean Leather,";
        homepage = "http://github.com/spl/xformat/tree/master";
        url = "";
        synopsis = "Extensible, type-safe formatting with scanf- and printf-like functions";
        description = "/Warning:/ This version of the package is very experimental and the interface\nmay change in later versions. I am seeking comments to improve it.\n\nThis package is composed of two functions for formatted conversion between\nstrings and typed values. Each is defined as a type-indexed function using a\ntype class with multiple parameters and functional dependencies along with\nformat descriptors.\n\n\"Text.XFormat.Read\" allows one to parse values from a formatted string. Its\nfunctionality is similar to the C @scanf@ function. Unlike @scanf@, however,\nthe format descriptor is well-typed, ensuring that the output type is\nstatically known.\n\n\"Text.XFormat.Show\" allows one to print values to a formatted string. Its\nfunctionality is similar to the C @printf@ function. Unlike @printf@, however,\nthe format descriptor is well-typed, ensuring that the variable number\narguments are statically known.\n\nThese functions can be easily extended to support new formats and new types.\nExtension is simple: define a format descriptor and an instance of the\nappropriate class.";
        buildType = "Custom";
      };
      components = {
        xformat = {
          depends  = [ hsPkgs.base ];
        };
      };
    }