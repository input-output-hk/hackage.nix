{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rails-session";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Philip Cunningham & Alfredo di Napoli";
      maintainer = "philip@irisconnect.co.uk";
      author = "Philip Cunningham & Alfredo di Napoli";
      homepage = "http://github.com/iconnect/rails-session#readme";
      url = "";
      synopsis = "Decrypt Ruby on Rails sessions in Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "rails-session" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.http-types)
          (hsPkgs.pbkdf)
          (hsPkgs.ruby-marshal)
          (hsPkgs.string-conv)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.semigroups)
            (hsPkgs.rails-session)
            (hsPkgs.ruby-marshal)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.transformers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }