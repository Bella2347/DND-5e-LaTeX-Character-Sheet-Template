CHARACTER=unnamed
NIX_SETTINGS=--extra-experimental-features nix-command --extra-experimental-features flakes


build:
	nix ${NIX_SETTINGS} build

build_character:
	nix ${NIX_SETTINGS} build .#${CHARACTER}

develop:
	nix ${NIX_SETTINGS} develop

test:
	nix ${NIX_SETTINGS} build .#test

validate_test:
	./scripts/check_test_output.sh
