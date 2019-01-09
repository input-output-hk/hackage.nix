{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HJScript"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joel.bjornson@gmail.com,\nnibro@cs.chalmers.se";
      author = "Joel Bjornson, joel.bjornson@gmail.com,\nNiklas Broberg, nibro@cs.chalmers.se";
      homepage = "";
      url = "";
      synopsis = "HJScript is a Haskell EDSL for writing JavaScript programs.";
      description = "HJScript is a DSL built on top of HJavaScript, for writing\nclient-side dynamic web pages. The programming model is fairly\nlow-level, resembling the actual JavaScript code quite a lot,\nbut should be easy to extend with higher-level functionality.\nNotable is that HJScript supports the use of literal XML syntax,\nas defined by the hsx package, for creating DOM ElementNodes.\nAlso notable is that HJScript supports Ajax functionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HJavaScript)
          (hsPkgs.mtl)
          (hsPkgs.hsx)
          ];
        };
      };
    }