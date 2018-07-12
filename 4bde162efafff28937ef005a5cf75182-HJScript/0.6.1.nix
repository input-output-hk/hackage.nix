{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HJScript";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joel Bjornson <joel.bjornson@gmail.com>,\nNiklas Broberg <niklas.broberg@gmail.com>";
        author = "Joel Bjornson, Niklas Broberg";
        homepage = "http://patch-tag.com/r/nibro/hjscript";
        url = "";
        synopsis = "HJScript is a Haskell EDSL for writing JavaScript programs.";
        description = "HJScript is a DSL built on top of HJavaScript, for writing\nclient-side dynamic web pages. The programming model is fairly\nlow-level, resembling the actual JavaScript code quite a lot,\nbut should be easy to extend with higher-level functionality.\nNotable is that HJScript supports the use of literal XML syntax,\nas defined by the hsx package, for creating DOM ElementNodes.\nAlso notable is that HJScript supports Ajax functionality.";
        buildType = "Simple";
      };
      components = {
        "HJScript" = {
          depends  = [
            hsPkgs.base
            hsPkgs.HJavaScript
            hsPkgs.mtl
            hsPkgs.hsx
          ];
        };
      };
    }