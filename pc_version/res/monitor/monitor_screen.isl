in {
	tex2D diffuse_map [wrap-u: clamp, wrap-v: clamp, min-filter:trilinear, mag-filter:nearest];
}

variant {
	vertex {
		out {
			vec2 v_uv;
		}

		source %{
			v_uv = vUV0;
		%}
	}

	pixel {
		source %{
			vec4 diffuse_color = texture2D(diffuse_map, v_uv);

			%diffuse% = diffuse_color;
			// %constant% = vec4(1.0, 0.0, 0.5, 1.0);
		%}
	}
}