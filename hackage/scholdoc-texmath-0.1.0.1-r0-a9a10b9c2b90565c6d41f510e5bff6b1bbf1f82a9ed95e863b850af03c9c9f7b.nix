{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { executable = false; network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "scholdoc-texmath"; version = "0.1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "timtylin@gmail.com";
      author = "Tim T.Y. Lin";
      homepage = "http://github.com/timtylin/scholdoc-texmath";
      url = "";
      synopsis = "Scholdoc fork of texmath";
      description = "This package is a fork of @texmath@, intended to support\nthe development of Scholdoc. It is currently just a\ntrivial fork just so it can compile against\n@scholdoc-types@ without polluting the @texmath@ package\nnamespace.\n\nThis package is currently up to date with @taxmath@\nversion 0.8.0.1\n\nThe @texmath@ library provides functions to read and write\nTeX math, presentation MathML, and OMML (Office Math\nMarkup Language, used in Microsoft Office). For\ndescriptions of the original @texmath@ package, please\nvisit <http://hackage.haskell.org/package/texmath>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."scholdoc-types" or ((hsPkgs.pkgs-errors).buildDepError "scholdoc-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "texmath" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."scholdoc-texmath" or ((hsPkgs.pkgs-errors).buildDepError "scholdoc-texmath"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."scholdoc-types" or ((hsPkgs.pkgs-errors).buildDepError "scholdoc-types"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ]);
          buildable = if flags.executable then true else false;
          };
        };
      tests = {
        "test-texmath" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."scholdoc-texmath" or ((hsPkgs.pkgs-errors).buildDepError "scholdoc-texmath"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }