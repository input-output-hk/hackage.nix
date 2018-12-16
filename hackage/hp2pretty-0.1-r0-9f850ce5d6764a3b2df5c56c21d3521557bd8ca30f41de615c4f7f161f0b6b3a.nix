{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hp2pretty";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2010  Claude Heiland-Allen";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "http://gitorious.org/hp2pretty";
      url = "";
      synopsis = "generate pretty graphs from heap profiles";
      description = "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with\nthe aims of being maintainable, with more flexible output, and\nmore beautiful output.  Currently hp2pretty outputs Scalable\nVector Graphics (SVG) only, though PostScript (PS) is planned.\nAlso none (count'em) of hp2ps' options are implemented yet in\nhp2pretty.\n\nUsage: \"hp2pretty <in.hp >out.svg\"";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hp2pretty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }