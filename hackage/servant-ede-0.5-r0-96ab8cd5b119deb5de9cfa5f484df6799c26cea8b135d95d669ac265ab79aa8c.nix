{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-ede"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "2015 Alp Mestanogullari";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "http://github.com/alpmestan/servant-ede";
      url = "";
      synopsis = "Combinators for rendering EDE templates in servant web applications";
      description = "Combinators for rendering EDE templates in servant web applications.\n\nDocumentation and examples available at \"Servant.EDE\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.ede)
          (hsPkgs.either)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.semigroups)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wai)
          (hsPkgs.xss-sanitize)
          ];
        };
      exes = {
        "servant-ede-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ede)
            (hsPkgs.http-media)
            (hsPkgs.servant-server)
            (hsPkgs.servant-ede)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }