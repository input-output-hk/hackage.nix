{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mailgun"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrewrademacher@gmail.com";
      author = "Andrew Rademacher";
      homepage = "";
      url = "";
      synopsis = "Connector to Rackspace's Mailgun Service";
      description = "Allows users to directly access Rackspace's Mailgun service\nwithout having to work with the underlying REST service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.http-client-multipart)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.http-client)
          (hsPkgs.failure)
          (hsPkgs.exceptions)
          ];
        };
      exes = {
        "send" = {
          depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.mailgun) ];
          };
        "sendmany" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.http-conduit)
            (hsPkgs.transformers)
            (hsPkgs.mailgun)
            ];
          };
        };
      };
    }