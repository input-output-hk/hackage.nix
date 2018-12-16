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
      specVersion = "1.10";
      identifier = {
        name = "apiary-clientsession";
        version = "0.17.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/apiary";
      url = "";
      synopsis = "clientsession support for apiary web framework.";
      description = "examples:\n\n<https://github.com/philopon/apiary/blob/master/examples/csrf.hs>\n\n<https://github.com/philopon/apiary/blob/master/examples/auth.hs>\n\n<https://github.com/philopon/apiary/blob/master/examples/embed_key.hs>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.clientsession)
          (hsPkgs.apiary)
          (hsPkgs.apiary-cookie)
          (hsPkgs.directory)
          (hsPkgs.crypto-random)
          (hsPkgs.cprng-aes)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.time)
          (hsPkgs.data-default-class)
          (hsPkgs.http-types)
          (hsPkgs.blaze-html)
        ];
      };
    };
  }