{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ngx-export-tools-extra"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/ngx-export-tools-extra";
      url = "";
      synopsis = "More extra tools for Nginx haskell module";
      description = "More extra tools for\n<http://github.com/lyokha/nginx-haskell-module Nginx haskell module>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.ngx-export-tools)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.containers)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.snap-core)
          (hsPkgs.snap-server)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      };
    }