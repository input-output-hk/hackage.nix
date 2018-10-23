{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ngx-export-tools";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/nginx-haskell-module";
      url = "";
      synopsis = "Extra tools for Nginx haskell module";
      description = "Extra tools for\n<http://github.com/lyokha/nginx-haskell-module Nginx haskell module>";
      buildType = "Simple";
    };
    components = {
      "ngx-export-tools" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.ngx-export)
          (hsPkgs.aeson)
          (hsPkgs.safe)
        ];
      };
    };
  }