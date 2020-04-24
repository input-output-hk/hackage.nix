{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "BerkeleyDBXML"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "http://www.haskell.org/haskellwiki/BerkeleyDBXML";
      url = "";
      synopsis = "Berkeley DB and Berkeley DB XML binding";
      description = "Berkeley DB and Berkeley DB XML binding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."db" or ((hsPkgs.pkgs-errors).sysDepError "db"))
          (pkgs."dbxml" or ((hsPkgs.pkgs-errors).sysDepError "dbxml"))
          (pkgs."db_cxx" or ((hsPkgs.pkgs-errors).sysDepError "db_cxx"))
          (pkgs."xqilla" or ((hsPkgs.pkgs-errors).sysDepError "xqilla"))
          (pkgs."xerces-c" or ((hsPkgs.pkgs-errors).sysDepError "xerces-c"))
          (pkgs."xml2" or ((hsPkgs.pkgs-errors).sysDepError "xml2"))
          ];
        buildable = true;
        };
      };
    }