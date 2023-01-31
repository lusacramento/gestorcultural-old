<template>
	<div id="sign-in-modal">
		<div
			class="modal fade"
			id="modalEmail"
			aria-hidden="true"
			aria-labelledby="modalEmailLabel"
			tabindex="-1"
		>
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="modalEmailLabel">Registrar</h1>
						<button
							type="button"
							class="btn-close"
							data-bs-dismiss="modal"
							aria-label="Close"
						></button>
					</div>
					<div class="modal-body">
						<FormsUsersRegister />
						<div class="modal-footer"></div>
					</div>
				</div>
			</div>
		</div>
		<button
			class="btn btn-primary"
			data-bs-target="#modalEmail"
			data-bs-toggle="modal"
		>
			Entrar
		</button>
	</div>
</template>

<script setup>
	import { computed, ref } from 'vue'

	const hidePassword = ref(true)
	const password = ref('')

	const passwordFieldIcon = computed(() =>
		hidePassword.value ? 'ion:eye-sharp' : 'ion:eye-off-sharp',
	)
	const passwordFieldType = computed(() =>
		hidePassword.value ? 'password' : 'text',
	)

	let isValidEmail = true

	// Email
	const data = reactive({
		email: {
			value: ref(''),
			regex: /^\w+[@]\w+[.]\w+([.]\w+)?$/,
			isValid: true,
			placeHolder: 'joao@silva.com.br',
			describedby: 'Por favor, digite um email válido.',
		},
		pwd: {
			value: ref(''),
			repeat: ref(''),
			regex: /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/,
			isValid: true,
			placeHolder: 'joao@silva.com.br',
			describedby:
				'A senha deve conter o mínimo de oito caracteres, pelo menos uma letra e um número:',
		},
	})

	watch(data, (newValue) => {
		const email = newValue.email
		newValue.email.regex.test(email.value)
			? (email.isValid = false)
			: (email.isValid = true)

		const pwd = newValue.pwd
		newValue.pwd.regex.test(pwd.value)
			? (pwd.isValid = false)
			: (pwd.isValid = true)
	})

	const verifyCredentials = async () => {
		const { data } = await useFetch('/api/users', { method: 'POST' })
		console.log(data)
	}
</script>

<style></style>
