<template>
	<form class="container" @submit.prevent="onSubmit">
		<div class="mb-3" v-if="data.pagenation.value === 0">
			<label for="input-email" class="form-label">{{ data.email.label }}</label>
			<input
				ref="inputEmail"
				id="input-email"
				type="email"
				class="form-control"
				:placeholder="data.email.placeHolder"
				aria-describedby="emailHelp"
				v-model="data.email.value"
				@keyup.enter="changeNextPage(data.email.isValid, inputPassword)"
			/>
			<div id="emailHelp" class="form-text">
				{{ data.email.describedby }}
			</div>
			<div v-if="data.email.isExists">
				<nuxt-link to="/#" class="link" aria-current="page">
					Recuperar acesso?
				</nuxt-link>
			</div>
			<div class="d-flex justify-self-end">
				<button
					:class="{ disabled: !data.email.isValid }"
					type="button"
					class="btn btn-primary ms-auto"
					@click="changeNextPage(data.email.isValid, inputPassword)"
				>
					Proximo
				</button>
			</div>
		</div>
		<div class="mb-3" v-else-if="data.pagenation.value === 1">
			<label for="input-password" class="form-label">{{
				data.password.label
			}}</label>
			<div class="d-flex">
				<input
					ref="inputPassword"
					id="input-password"
					:type="data.password.type"
					class="form-control"
					v-model="data.password.value"
					aria-describedby="passwordHelp"
					@keyup.enter="changeNextPage(data.password.isValid, inputPassword)"
				/>
				<button
					type="button"
					class="mx-2"
					@click="data.icons.switchPasswordvisibility"
				>
					<Icon :name="data.icons.current" :size="data.icons.size" />
				</button>
			</div>
			<div id="passwordlHelp" class="form-text">
				{{ data.password.describedby }}
			</div>
			<div class="d-flex justify-content-end">
				<button
					type="button"
					class="btn btn-secondary mx-2"
					@click="changePreviousPage"
				>
					Voltar
				</button>
				<button
					type="button"
					class="btn btn-primary"
					:class="{ disabled: !data.password.isValid }"
					@click="data.pagenation.next"
				>
					Proximo
				</button>
			</div>
		</div>
		<div class="mb-3" v-else-if="data.pagenation.value === 2">
			<label for="input-repeat-password" class="form-label">{{
				data.repeatPassword.label
			}}</label>
			<div class="d-flex">
				<input
					id="input-repeat-password"
					ref="inputRepeatPassword"
					:type="data.repeatPassword.type"
					class="form-control"
					v-model="data.repeatPassword.value"
					aria-describedby="passwordRepeatHelp"
					@keyup.enter="
						changeNextPage(data.repeatPassword.isValid, inputRepeatPassword)
					"
				/>
				<button
					type="button"
					class="mx-2"
					@click="data.icons.switchPasswordvisibility"
				>
					<Icon :name="data.icons.current" :size="data.icons.size" />
				</button>
			</div>
			<div id="passwordRepeatlHelp" class="form-text">
				{{ data.repeatPassword.describedby }}
			</div>
			<div class="d-flex justify-content-end">
				<button
					type="button"
					class="btn btn-secondary mx-2"
					@click="changePreviousPage"
				>
					Voltar
				</button>
				<button
					type="button"
					class="btn btn-primary"
					:class="{ disabled: !data.repeatPassword.isValid }"
					@click="
						changeNextPage(data.repeatPassword.isValid, inputRepeatPassword)
					"
				>
					Quase lá...
				</button>
			</div>
		</div>
		<div class="mb-3 form-check" v-else="data.pagenation.value === 3">
			<input
				id="input-check"
				ref="inputCheck"
				type="checkbox"
				class="form-check-input"
				v-model="data.check.isOk"
				@keyup.enter="changeNextPage(data.check.isOk)"
			/>
			<label class="form-check-label" for="check">{{ data.check.label }}</label>
			<div class="d-flex justify-content-end">
				<button
					type="button"
					class="btn btn-secondary mx-2"
					@click="changePreviousPage"
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
	import { ref, onMounted } from 'vue'
	import { useToast } from 'vue-toastification'

	const toast = useToast()

	// HTML INPUTS ELEMENT
	let inputEmail = ref()
	let inputPassword = ref()
	let inputRepeatPassword = ref()
	let inputCheck = ref()

	let init = defineProps({ init: { type: Boolean } })

	// DATA
	const data = reactive({
		icons: {
			opened: 'ion:eye-sharp',
			closed: 'ion:eye-off-sharp',
			size: '2em',
			current: 'ion:eye-off-sharp',

			switchPasswordvisibility: () => {
				if (data.icons.current === data.icons.opened) {
					data.icons.current = data.icons.closed
					data.password.type = 'password'
					data.repeatPassword.type = 'password'
				} else {
					data.icons.current = data.icons.opened
					data.password.type = 'text'
					data.repeatPassword.type = 'text'
				}
			},
		},
		autofocus: false,
		email: {
			label: 'Email',
			value: '',
			repeatValue: ref(''),
			regex: /^\w+[@]\w+[.]\w+([.]\w+)?$/,
			isValid: false,
			isExists: false,
			placeHolder: 'maria@jose.com.br',
			describedby: 'Por favor, digite um email válido.',

			focus: () => inputEmail.value.focus(),
			existsUser: async () => {
				const url = `${data.urls.isExists}${data.email.value}`
				const response = await $fetch(
					`${data.urls.isExists}${data.email.value}`,
					{
						headers: {
							'content-type': 'application/json',
						},
					},
				)
				return response
			},
		},

		password: {
			label: 'Senha',
			repeatLabel: 'Confirmar senha',
			value: ref(''),
			type: 'password',
			regex: /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/,
			isValid: false,
			placeHolder: '',
			describedby:
				'A senha deve conter o mínimo de oito caracteres, sem caratecteres especiais, pelo menos uma letra e um número.',

			focus: () => inputPassword.value.focus(),
		},

		repeatPassword: {
			label: 'Confirmar senha',
			value: ref(''),
			type: 'password',
			regex: /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/,
			isValid: false,
			placeHolder: '',
			describedby:
				'A repetição da senha tem que ser igual ao informado na senha.',
			focus: () => {
				inputRepeatPassword.value.focus()
			},
		},

		check: {
			label: '123',
			isOk: false,
			focus: () => {
				inputCheck.value.focus()
			},
		},

		pagenation: {
			value: 0,
			next: () => {
				data.pagenation.value++
			},
			prev: () => {
				data.pagenation.value--
			},
			isOk: false,
		},
		urls: {
			post: 'http://localhost:8080/api/usuarios',
			isExists: 'http://localhost:8080/api/usuarios/emailcadastrado/',
		},

		response: {},
	})

	onMounted(() => {
		nextTick(() => {
			data.email.focus()
			inputEmail.value.focus
		})
		inputEmail.value.focus
		inputEmail.value.focus()
	})

	watch(init, (newValue) => {
		if (newValue.init) {
			nextTick(() => {
				data.autofocus = true
				inputEmail.value.focus()
				data.email.focus
				data.email.focus()
			})
		}
		inputEmail.value.focus
		inputEmail.value.focus()
	})

	watch(data, async (newValue) => {
		const email = newValue.email
		email.regex.test(email.value)
			? (email.isValid = true)
			: (email.isValid = false)

		const password = newValue.password
		newValue.password.regex.test(password.value)
			? (password.isValid = true)
			: (password.isValid = false)

		const repeatPassword = newValue.repeatPassword
		repeatPassword.regex.test(repeatPassword.value) &&
		repeatPassword.value === password.value
			? (repeatPassword.isValid = true)
			: (repeatPassword.isValid = false)

		const check = newValue.check
		check.isOk ? (check.isOk = true) : (repeatPassword.isOk = false)

		const dataPagination = await newValue.pagenation.value
		switch (dataPagination) {
			case 0:
				newValue.email.focus()

				break
			case 1:
				newValue.password.focus()
				break
			case 2:
				newValue.repeatPassword.focus()
				break
			case 3:
				newValue.check.focus()
				break
			default:
				break
		}
	})

	const changeNextPage = async (isValid, el) => {
		if (isValid) {
			if (data.pagenation.value === 0) {
				if (await data.email.existsUser()) {
					const message = h('div', [
						'O email ',
						h('strong', data.email.value),
						' já está cadastrado!',
					])
					toast.error(message)
					data.email.isExists = true
				} else {
					data.email.isExists = false
					await data.pagenation.next()
				}
			} else {
				await data.pagenation.next()
			}
		}
	}
	const changePreviousPage = async (el) => {
		await data.pagenation.prev()
	}

	const verifyCredentials = async () => {
		const user = {
			email: data.email.value,
			password: data.password.value,
			agree: data.check.isOk,
			isValidity: false,
		}

		const optionToastRedirect = {
			onClose: () => {
				window.location.assign('/')
			},
		}

		response = await $fetch(data.urls.post, {
			headers: {
				'content-type': 'application/json',
			},
			method: 'POST',
			body: user,
		})
			.then(async (response) => {
				const message = h('div', [
					'Usuário ',
					h('strong', response.email),
					' cadastrado com sucesso!',
					h('br'),
					h('strong', 'Verifique seu email'),
					' para acessar sua conta.',
				])
				await toast.success(message, optionToastRedirect)
			})
			.catch((error) => {
				const message = h('div', [
					'Ocorreu um ',
					h('strong', 'erro'),
					` ao cadastrar o usuário!\n${error}`,
				])
				toast.error(messsage, optionToastRedirect)
			})
	}
</script>

<style scoped></style>
