{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haxy"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/haxy";
      url = "";
      synopsis = "A simple HTTP proxy server library";
      description = "A library for writing HTTP proxy servers with the focus on simplicity, flexibility and modularity. Allows arbitrary transformations on requests and responses and custom caching methods. It's up to the user to make sure that the message transformations are consistent with the HTTP specification. The executable program is a simple non-caching identity proxy and is used for testing the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."http-server" or ((hsPkgs.pkgs-errors).buildDepError "http-server"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."hostname" or ((hsPkgs.pkgs-errors).buildDepError "hostname"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }