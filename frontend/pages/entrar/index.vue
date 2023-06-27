<template>
	<main>
		<!-- Modal -->
		<div
			ref="signInModal"
			class="modal fade"
			id="signInModal"
			tabindex="-1"
			aria-labelledby="signInModalLabel"
			aria-hidden="true"
			show
		>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="signInModalLabel">Entrar</h1>
						<button
							type="button"
							class="btn-close"
							data-bs-dismiss="modal"
							aria-label="Close"
						></button>
					</div>
					<div class="modal-body">
						<FormsUsersSignin :init="data.init" />
					</div>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
	</main>
</template>

<script setup lang="ts">
	import type { Modal } from 'bootstrap'
	const { $bootstrap } = useNuxtApp()
	const signInModal = ref()

	let modal: Modal

	const data = reactive({
		init: false,
	})

	onMounted(async () => {
		const el = await document.getElementById('signInModal')!
		modal = await new $bootstrap.Modal(el)!
		await modal.show()
		setTimeout(() => {
			data.init = true
		}, 500)
	})
</script>

<style lang="scss" scoped></style>
