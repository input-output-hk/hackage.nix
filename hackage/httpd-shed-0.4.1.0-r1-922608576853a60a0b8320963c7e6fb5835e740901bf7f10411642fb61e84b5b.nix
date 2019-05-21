{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { buildexamples = false; network-uri = true; network-bsd = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "httpd-shed"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Andy Gill";
      maintainer = "Ganesh Sittampalam";
      author = "Andy Gill, Brandon Moore, Henning Thielemann, John Van Enk.";
      homepage = "";
      url = "";
      synopsis = "A simple web-server with an interact style API";
      description = "This web server promotes a Request to IO Response function\ninto a local web server. The user can decide how to interpret\nthe requests, and the library is intended for implementing Ajax APIs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.network) (hsPkgs.network-uri) (hsPkgs.base) ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
          ]) ++ (if flags.network-bsd
          then [ (hsPkgs.network-bsd) (hsPkgs.network) ]
          else [ (hsPkgs.network) ]);
        };
      exes = { "httpd-shed-test" = {}; };
      };
    }