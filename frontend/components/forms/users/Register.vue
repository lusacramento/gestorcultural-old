<template>
	<form>
		<div class="mb-3" v-if="data.pagenation.value === 0">
			<label for="inputEmail1" class="form-label">{{ data.email.label }}</label>
			<input
				type="email"
				class="form-control"
				id="inputEmail1"
				aria-describedby="emailHelp"
				v-model="data.email.value"
			/>
			<div id="emailHelp" class="form-text">
				{{ data.email.describedby }}
			</div>
			<div class="d-flex justify-self-end">
				<button
					:class="{ disabled: !data.email.isValid }"
					type="button"
					class="btn btn-primary ms-auto"
					@click="data.pagenation.next"
				>
					Proximo
				</button>
			</div>
		</div>
		<div class="mb-3" v-else-if="data.pagenation.value === 1">
			<label for="inputPassword" class="form-label">{{ data.pwd.label }}</label>
			<input
				type="password"
				class="form-control"
				id="inputPassword"
				v-model="data.pwd.value"
				aria-describedby="pwdHelp"
			/>
			<div id="pwdlHelp" class="form-text">
				{{ data.pwd.describedby }}
			</div>
			<div class="d-flex justify-content-end">
				<button
					type="button"
					class="btn btn-secondary mx-2"
					@click="data.pagenation.prev"
				>
					Voltar
				</button>
				<button
					type="button"
					class="btn btn-primary"
					:class="{ disabled: !data.pwd.isValid }"
					@click="data.pagenation.next"
				>
					Proximo
				</button>
			</div>
		</div>
		<div class="mb-3" v-else-if="data.pagenation.value === 2">
			<label for="inputRepeatPassword" class="form-label">{{
				data.repeatPwd.label
			}}</label>
			<input
				type="password"
				class="form-control"
				id="inputRepeatPassword"
				v-model="data.repeatPwd.value"
				aria-describedby="pwdRepeatHelp"
			/>
			<div id="pwdRepeatlHelp" class="form-text">
				{{ data.repeatPwd.describedby }}
			</div>
			<div class="d-flex justify-content-end">
				<button
					type="button"
					class="btn btn-secondary mx-2"
					@click="data.pagenation.prev"
				>
					Voltar
				</button>
				<button
					type="button"
					class="btn btn-primary"
					:class="{ disabled: !data.repeatPwd.isValid }"
					@click="data.pagenation.next"
				>
					Quase lá...
				</button>
			</div>

			<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
		</div>
		<div class="mb-3 form-check" v-else="data.pagenation.value === 3">
			<input
				type="checkbox"
				class="form-check-input"
				id="check"
				v-model="data.check.isOk"
			/>
			<label class="form-check-label" for="check">{{ data.check.label }}</label>
			<div class="d-flex justify-content-end">
				<button
					type="button"
					class="btn btn-secondary mx-2"
					@click="data.pagenation.prev"
				>
					Voltar
				</button>
				<button
					type="button"
					class="btn btn-primary"
					:class="{ disabled: !data.check.isOk }"
					@click="verifyCredentials"
				>
					Cadastrar
				</button>
			</div>
		</div>
	</form>
</template>

<script setup>
	import { computed, ref } from 'vue'
	import { useToast } from 'vue-toastification'

	const hidePassword = ref(true)
	const password = ref('')

	const passwordFieldIcon = computed(() =>
		hidePassword.value ? 'ion:eye-sharp' : 'ion:eye-off-sharp',
	)
	const passwordFieldType = computed(() =>
		hidePassword.value ? 'password' : 'text',
	)

	// Email
	const data = reactive({
		email: {
			label: 'Email',
			value: ref(''),
			repeatValue: ref(''),
			regex: /^\w+[@]\w+[.]\w+([.]\w+)?$/,
			isValid: false,
			placeHolder: 'joao@silva.com.br',
			describedby: 'Por favor, digite um email válido.',
		},

		pwd: {
			label: 'Senha',
			repeatLabel: 'Confirmar senha',
			value: ref(''),
			repeat: ref(''),
			regex: /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/,
			isValid: true,
			placeHolder: '',
			describedby:
				'A senha deve conter o mínimo de oito caracteres, pelo menos uma letra e um número.',
		},

		repeatPwd: {
			label: 'Confirmar senha',
			value: ref(''),
			regex: /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/,
			isValid: false,
			placeHolder: '',
			describedby:
				'A repetição da senha tem que ser igual ao informado na senha.',
		},

		check: {
			label: '123',
			isOk: false,
		},

		pagenation: {
			value: 0,
			next: () => {
				console.log('next')
				data.pagenation.value++
			},
			prev: () => {
				data.pagenation.value--
			},
			isOk: false,
		},
	})

	watch(data, (newValue) => {
		const email = newValue.email
		email.regex.test(email.value)
			? (email.isValid = true)
			: (email.isValid = false)

		const pwd = newValue.pwd
		newValue.pwd.regex.test(pwd.value)
			? (pwd.isValid = true)
			: (pwd.isValid = false)

		const repeatPwd = newValue.repeatPwd
		repeatPwd.regex.test(repeatPwd.value) && repeatPwd.value === pwd.value
			? (repeatPwd.isValid = true)
			: (repeatPwd.isValid = false)

		const check = newValue.check
		check.isOk ? (check.isOk = true) : (repeatPwd.isOk = false)
	})

	const verifyCredentials = () => {
		console.log('bang')
		const toast = useToast()
		toast.success('Successfully authenticated')
	}
</script>

<style scoped></style>
