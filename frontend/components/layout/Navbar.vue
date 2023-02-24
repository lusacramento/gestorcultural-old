<template>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Gerenciador de Projetos Culturais</a>
			<button
				class="navbar-toggler"
				type="button"
				data-bs-toggle="collapse"
				data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent"
				aria-expanded="false"
				aria-label="Toggle navigation"
			>
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item">
						<nuxt-link to="/" class="nav-link active" aria-current="page"
							>Pagina Inicial</nuxt-link
						>
					</li>
				</ul>
				<ul class="navbar-nav mb-2 mb-lg-0">
					<li class="nav-item">
						<nuxt-link to="/registrar" class="nav-link" aria-current="page">
							Registrar
						</nuxt-link>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/entrar">Entrar</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</template>

<script setup></script>

<style scoped></style>
