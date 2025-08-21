{
  "0.1.0.0" = {
    sha256 = "3fc8f84a6ea14a66a19351326052e04442c79f74b4d59b887ecac8b818924429";
    revisions = {
      r0 = {
        nix = import ../hackage/github-actions-0.1.0.0-r0-6b4f6e78bd117c7e1f4b159fe41918d257564bb979704c5c547eaf3b07665544.nix;
        revNum = 0;
        sha256 = "6b4f6e78bd117c7e1f4b159fe41918d257564bb979704c5c547eaf3b07665544";
      };
      r1 = {
        nix = import ../hackage/github-actions-0.1.0.0-r1-016cfa6cc1ab2c38c127c8ba14b2a8e7feed419fe172efb13369aa876fb7c58e.nix;
        revNum = 1;
        sha256 = "016cfa6cc1ab2c38c127c8ba14b2a8e7feed419fe172efb13369aa876fb7c58e";
      };
      default = "r1";
    };
  };
  "0.1.1.0" = {
    sha256 = "4dfcf9571f7fe5fdafaaaf1112fc69ea4cfbda3d69e493396712cbeb7d81b7db";
    revisions = {
      r0 = {
        nix = import ../hackage/github-actions-0.1.1.0-r0-ecddfb15784fd4d54ec2784f13259a93bc105b5216ee53fd1f92575dfc0a4859.nix;
        revNum = 0;
        sha256 = "ecddfb15784fd4d54ec2784f13259a93bc105b5216ee53fd1f92575dfc0a4859";
      };
      r1 = {
        nix = import ../hackage/github-actions-0.1.1.0-r1-f86eb222f99400b3073e4310784743b3646a0d783a2d77107014e2f0e4d9bb89.nix;
        revNum = 1;
        sha256 = "f86eb222f99400b3073e4310784743b3646a0d783a2d77107014e2f0e4d9bb89";
      };
      default = "r1";
    };
  };
}