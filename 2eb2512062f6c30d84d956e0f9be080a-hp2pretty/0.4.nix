{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hp2pretty";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010,2011  Claude Heiland-Allen";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "http://gitorious.org/hp2pretty";
        url = "";
        synopsis = "generate pretty graphs from heap profiles";
        description = "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with\nthe aims of being maintainable, with more flexible output, and\nmore beautiful output.  Currently hp2pretty outputs Scalable\nVector Graphics (SVG) only, though PostScript (PS) is planned.\nAlso none (count'em) of hp2ps' options are implemented yet in\nhp2pretty.\n\nUsage has changed since the previous release:\n\nhp2pretty *.hp\n\nhp2pretty --uniform-scale=time   *.hp\n\nhp2pretty --uniform-scale=memory *.hp\n\nhp2pretty --uniform-scale=both   *.hp\n\nColours have also changed: now they are based on a hash of the\ncost label, which should make colours have stable semantics\nacross program runs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hp2pretty = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.mtl
            ];
          };
        };
      };
    }