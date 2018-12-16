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
      specVersion = "1.8";
      identifier = {
        name = "ngx-export";
        version = "0.3.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/nginx-haskell-module";
      url = "";
      synopsis = "Helper module for Nginx haskell module";
      description = "Helper module for\n<http://github.com/lyokha/nginx-haskell-module Nginx haskell module>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
          (hsPkgs.async)
        ];
      };
    };
  }