crates := cetacea-proto orkas-core limlog r18 jsonmpk

doc:
	for crate in $(crates); do \
		cargo +nightly rustdoc -p $$crate -- -Z unstable-options --show-type-layout --enable-index-page --generate-link-to-definition; \
	done
