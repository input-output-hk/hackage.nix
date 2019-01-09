{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.20";
      identifier = { name = "mywatch"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2016, Zalora South East Asia Pte. Ltd";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Igor Pashev <pashev.igor@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Web application to view and kill MySQL queries";
      description = "View and kill queries on multiple MySQL servers.\nDesigned to work behind Sproxy.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mywatch" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.ConfigFile)
            (hsPkgs.data-default-class)
            (hsPkgs.docopt)
            (hsPkgs.fast-logger)
            (hsPkgs.http-types)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.mysql)
            (hsPkgs.mysql-simple)
            (hsPkgs.network)
            (hsPkgs.resource-pool)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }