{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deriveJsonNoPrefix";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/deriveJsonNoPrefix";
      url = "";
      synopsis = "Derive ToJSON/FromJSON instances in a more prefix-friendly manner.";
      description = "Please see the README on GitLab at <https://gitlab.com/igrep/deriveJsonNoPrefix#readme>";
      buildType = "Simple";
    };
    components = {
      "deriveJsonNoPrefix" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }