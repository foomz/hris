# Generated by Django 4.2.14 on 2024-08-30 06:15

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_alter_payrollaccount_employee'),
    ]

    operations = [
        migrations.AlterField(
            model_name='payrollaccount',
            name='employee',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='users.employee'),
        ),
    ]
